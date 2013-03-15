require 'spec_helper'

describe "PaginasEstaticas" do
  describe "GET /paginas_estaticas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get paginas_estaticas_index_path
      response.status.should be(200)
    end
  end
end
