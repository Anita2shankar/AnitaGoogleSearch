class GoogleSearchAnita
  include PageObject
#  include Yaml


  page_url 'www.google.com'
  #readData=YAML.load '../dta.yaml'

  text_field( :txtgoogleSearch, :id=>'lst-ib')
  #button(:butsearchsubmit,:xpath=>'//*[@id="tsf"]/div[2]/div[3]/center/input[1]')
  #button(:butsearchsubmit, :class=> 'sbico-c')
  button(:butsearchsubmit,:name=>'btnK')


  div(:image, :id=>'lga')
  ul(:listres,:class => 'sbsb_d')
 # (sbsb_c gsfs sbsb_d)



  def setSearchText (txtsearch)
    txtgoogleSearch_element.send_keys txtsearch, :enter
    #self.txtgoogleSearch=txtsearch
#    image_element.click
    #listres_element.when_present.lis[0].click
    #self.txtgoogleSearch.send :enter

  end

  def get_data_from_yml

    p Time.new

    yml_path = 'C:\Anita\Ruby_Tuts\AnitaGoogleSearch\features\support\data\test_data.yml'
    @file = YAML.load_file yml_path
    p @file.fetch('request')
    p @file['content']['session']

    p @file['city_name']

    @file['request'] = 33333
    @file['content']['session'] = 3 #Modify
    @file['city_name'] = 'boston abcd'
    #
    File.open(yml_path, "w") {|f| f.write(@file.to_yaml) }
    #
    p @file.fetch('request')
    p @file['content']['session']
    p @file['city_name']



  end


end