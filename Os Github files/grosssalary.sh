
read -p "Enter the employee name: " name
read -p "Enter the basic salary: " basic
read -p "Enter the DA percentage: " da_percent

# Calculate the DA amount
da=$((basic * da_percent / 100))

# Calculate the HRA amount (15% of basic)
hra=$((basic * 15 / 100))

# Calculate the PF amount (12% of basic + DA)
pf=$((basic * 12 / 100 + da * 12 / 100))

# Calculate the gross salary (basic + DA + HRA)
gross_salary=$((basic + da + hra))

# Calculate the net salary (gross salary - PF)
net_salary=$((gross_salary - pf))

# Display the results in the requested format
echo "NAME     BASIC   DA%  HRA%  MA  PF%  GROSSSALARY  NETSALARY"
echo "$name    $basic  $da_percent% 15% 300  $pf%  $gross_salary  $net_salary"
