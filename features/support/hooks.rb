

After("@pdfreset") do
  begin

    File.delete("#{DownloadHelper::PATH.to_s}/cv_1_ornek.pdf")



  rescue Exception=>e
  end

  begin
    File.delete("#{DownloadHelper::PATH.to_s}/cv_1_ornek (1).pdf")




  rescue Exception=>e
  end

end


Before("@pdfreset") do
  begin

    File.delete("#{DownloadHelper::PATH.to_s}/cv_1_ornek.pdf")



  rescue Exception=>e
  end

  begin
    File.delete("#{DownloadHelper::PATH.to_s}/cv_1_ornek (1).pdf")




  rescue Exception=>e
  end

end

