# K Windfuhr, D While, N Kapur, D M Ashcroft, E Kontopantelis, M J Carr, J Shaw, L Applyby, R T Webb, 2024.

import sys, csv, re

codes = [{"code":"66680020","system":"multilex"},{"code":"65386020","system":"multilex"},{"code":"68049020","system":"multilex"},{"code":"66688020","system":"multilex"},{"code":"66459020","system":"multilex"},{"code":"66451020","system":"multilex"},{"code":"71225020","system":"multilex"},{"code":"79462020","system":"multilex"},{"code":"38526020","system":"multilex"},{"code":"3985020","system":"multilex"},{"code":"65131020","system":"multilex"},{"code":"4011020","system":"multilex"},{"code":"66152020","system":"multilex"},{"code":"79463020","system":"multilex"},{"code":"65376020","system":"multilex"},{"code":"4007020","system":"multilex"},{"code":"68042020","system":"multilex"},{"code":"67890020","system":"multilex"},{"code":"66685020","system":"multilex"},{"code":"3997020","system":"multilex"},{"code":"65254020","system":"multilex"},{"code":"67898020","system":"multilex"},{"code":"78768020","system":"multilex"},{"code":"79464020","system":"multilex"},{"code":"71214020","system":"multilex"},{"code":"53823020","system":"multilex"},{"code":"65125020","system":"multilex"},{"code":"65128020","system":"multilex"},{"code":"71376020","system":"multilex"},{"code":"67893020","system":"multilex"},{"code":"66454020","system":"multilex"},{"code":"66149020","system":"multilex"},{"code":"65257020","system":"multilex"},{"code":"4003020","system":"multilex"},{"code":"68045020","system":"multilex"},{"code":"65262020","system":"multilex"},{"code":"71373020","system":"multilex"},{"code":"66160020","system":"multilex"},{"code":"87524020","system":"multilex"},{"code":"65381020","system":"multilex"},{"code":"4004020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('selective-serotonin-reuptake-inhibitor-adds-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["selective-serotonin-reuptake-inhibitor-ssri-adds-escitalopram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["selective-serotonin-reuptake-inhibitor-ssri-adds-escitalopram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["selective-serotonin-reuptake-inhibitor-ssri-adds-escitalopram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
