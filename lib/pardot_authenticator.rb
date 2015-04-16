require 'rest_client'

class PardotAuthenticator
  PARDOT_LOGIN_ENDPOINT = "https://pi.pardot.com/api/login/version/3"

  def self.login creds
    response = RestClient.post PARDOT_LOGIN_ENDPOINT, creds.to_h

    result = self.parse_response(response)
    result == '' ? nil : result
  end
  
  private
  def self.parse_response response
    doc = Nokogiri::XML(response.to_str)
    api_key = doc.xpath('/rsp[@stat="ok"]/api_key')
    api_key and api_key.text
  end
end
