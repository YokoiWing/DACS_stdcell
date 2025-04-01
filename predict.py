import re
import matplotlib.pyplot as plt
import numpy as np

def parse_report_file(filename):
    with open(filename, 'r') as f:
        lines = f.readlines()
    parsed_paths = []
    current_path = None
    current_data_path = False
    data_lines = []
    for line in lines:
        line = line.strip()
        if line.startswith('PATH '):
            if current_path:
                parsed_paths.append(current_path)
            path_number = int(line.split()[1])
            current_path = {'path_number': path_number}
        elif line == 'DATA_PATH':
            current_data_path = True
            data_lines = []
        elif line == 'END_DATA_PATH':
            current_data_path = False
            if current_path:
                columns_line = next(line for line in data_lines if line.startswith('COLUMNS'))
                columns = re.findall(r'\{([^}]*)\}', columns_line)
                data_lines = [line for line in data_lines if not line.startswith('COLUMNS')]
                gate_sequence = []
                cell_sequence = []
                for data_line in data_lines:
                    type_word = data_line.split()[0]
                    values = re.findall(r'\{([^}]*)\}', data_line)
                    if type_word == 'INST':
                        instance = values[0]
                        cell = values[6]
                        cell_no_suffix = cell.split('_ASAP7_75t_SL')[0]
                        gate_sequence.append(instance)
                        cell_sequence.append(cell_no_suffix)
                last_line_values = re.findall(r'\{([^}]*)\}', data_lines[-1])
                arrival_time = float(last_line_values[columns.index('arrival')])
                current_path['gate_sequence'] = tuple(gate_sequence)
                current_path['cell_sequence'] = cell_sequence
                current_path['arrival_time'] = arrival_time
        elif line.startswith('END_PATH '):
            if current_path:
                parsed_paths.append(current_path)
                current_path = None
        elif current_data_path:
            data_lines.append(line)
    if current_path:
        parsed_paths.append(current_path)
    return parsed_paths

# 假设报告文件名为'file1.rpt', 'file2.rpt', 'file3.rpt'
file1_parsed = parse_report_file('./26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/preCTS_timing/timing.rpt')
file2_parsed = parse_report_file('./26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/prePlace_timing/timing.rpt')
file3_parsed = parse_report_file('./26631dadda_bit16fb6545dd58885bf2431c21988dff9e3bddef7e0086f449065a0c1e66cdebbb80/innovus-rundir/reports/postRoute_timing/timing.rpt')

selected_path_numbers = [1 + 10*i for i in range(10)]
selected_paths = [path for path in file3_parsed if path['path_number'] in selected_path_numbers]

# 查找file1和file2中对应的路径
data = []
for path in selected_paths:
    gate_sequence = path['gate_sequence']
    arrival_time_file3 = path['arrival_time']
    cell_sequence = '->'.join(path['cell_sequence'])
    
    # 在file1和file2中查找匹配路径的到达时间
    file1_arrival_time = next((p['arrival_time'] for p in file1_parsed if p['gate_sequence'] == gate_sequence), None)
    file2_arrival_time = next((p['arrival_time'] for p in file2_parsed if p['gate_sequence'] == gate_sequence), None)
    
    data.append({
        'path_number': path['path_number'],
        'cell_sequence': cell_sequence,
        'arrival_times': [file1_arrival_time, file2_arrival_time, arrival_time_file3]
    })

# 按file3的到达时间排序
data_sorted = sorted(data, key=lambda x: x['arrival_times'][2], reverse=True)

# 绘图
x = np.array(range(1, len(data_sorted)+1))
width = 0.6  # 加粗柱子宽度
fig, ax = plt.subplots()

# 绘制三个文件的柱状图
ax.bar(x - width/3, [d['arrival_times'][0] for d in data_sorted], width/4, label='preCTS')
ax.bar(x, [d['arrival_times'][1] for d in data_sorted], width/4, label='prePlace')
ax.bar(x + width/3, [d['arrival_times'][2] for d in data_sorted], width/4, label='postRoute')

# 设置x轴和y轴标签
ax.set_xticks(x)
ax.set_xticklabels(range(1, len(data_sorted)+1))
ax.set_xlabel('Path Number')
ax.set_ylabel('Arrival Time')
ax.legend()
ax.set_ylim(600, 750)

# 添加文本到图表下方
from textwrap import fill  # 用于自动换行

# 设置每行的最大字符数
wrapped_text = "\n\n".join([fill(f"Path {i+1} (original number: {d['path_number']}): {d['cell_sequence']}", width=160) 
                          for i, d in enumerate(data_sorted)])

# 使用 ax.text 添加文本并设置换行
ax.text(0.5, -0.15, wrapped_text, ha='center', va='top', transform=ax.transAxes, fontsize=5, wrap=True)

# 调整布局，为下方文本留出空间
plt.subplots_adjust(bottom=0.4)  # 增加底部空间

# 显示图像
plt.show()