monthly_sales = 110
target_sales = 100

while true do
  puts("Current monthly sales: #{monthly_sales}")

  event "MONTHLY SALES ARE SUSPICIOUSLY HIGH" do
    monthly_sales > target_sales
  end

  event "MONTHLY SALES ARE ABYSMALLY LOW" do
    monthly_sales < target_sales
  end
  monthly_sales = rand(90..110)
  sleep(0.5)
end
