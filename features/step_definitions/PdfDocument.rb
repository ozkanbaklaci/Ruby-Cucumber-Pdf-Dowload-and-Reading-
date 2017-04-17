Given(/^dosya upload$/) do

  "#{Dir.pwd}/features/downloads/"

  File.expand_path("C:\\Download")

  visit "http://kariyer.trakya.edu.tr/pages/ornek-cv-ve-hazir-cv-sablonu#.WPUBzIjyjIU"

  sleep 2
  find("a[href='http://bys.trakya.edu.tr/file/download/25980141/']").click


  
end


Given(/^pdf process$/) do
  sleep 1
  reader = PDF::Reader.new("#{Dir.pwd}/features/downloads/cv_1_ornek.pdf")

  reader.pdf_version
  reader.info
  puts reader.metadata
  puts reader.page_count
  reader



  reader.pages.each do |page|
    page.fonts

    p page.text
  end
  puts  reader.pages.map(&:text)

end

