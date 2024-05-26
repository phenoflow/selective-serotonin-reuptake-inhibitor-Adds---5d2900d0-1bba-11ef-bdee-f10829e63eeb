# K Windfuhr, D While, N Kapur, D M Ashcroft, E Kontopantelis, M J Carr, J Shaw, L Applyby, R T Webb, 2024.

import sys, csv, re

codes = [{"code":"90871020","system":"multilex"},{"code":"93984020","system":"multilex"},{"code":"77306020","system":"multilex"},{"code":"97169020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('selective-serotonin-reuptake-inhibitor-adds-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["selective-serotonin-reuptake-inhibitor-ssri-adds-sugar---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["selective-serotonin-reuptake-inhibitor-ssri-adds-sugar---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["selective-serotonin-reuptake-inhibitor-ssri-adds-sugar---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)