require "recursion"

describe "recursion.rb" do

  describe '#sum_to' do
    it 'sum_to(5) => 15' do
      expect(sum_to(5)).to eq(15)
    end
  end

  describe '#sum_to' do
    it 'sum_to(1) => 1' do
      expect(sum_to(1)).to eq(1)
    end
  end

  describe '#sum_to' do
    it 'sum_to(9) => 45' do
      expect(sum_to(9)).to eq(45)
    end
  end

  describe '#sum_to' do
    it 'sum_to(1) => 1' do
      expect(sum_to(-8)).to eq(nil)
    end
  end

  describe '#add_numbers' do
    it '#add_numbers([1,2,3,4]) => 10' do
      expect(add_numbers([1,2,3,4])).to eq(10)
    end
  end

  describe '#add_numbers' do
    it '#add_numbers([3]) => 3' do
      expect(add_numbers([3])).to eq(3)
    end
  end

  describe '#add_numbers' do
    it '#add_numbers([-80,34,7]) => -39' do
      expect(add_numbers([-80,34,7])).to eq(-39)
    end
  end

  describe '#add_numbers' do
    it '#add_numbers' do
      expect(add_numbers([])).to eq(nil)
    end
  end

  describe '#gamma_fnc' do
    it '#gamma_fnc(0) => nil' do
      expect(gamma_fnc(0)).to eq(nil)
    end
  end

  describe '#gamma_fnc' do
    it '#gamma_fnc(1) => 1' do
      expect(gamma_fnc(1)).to eq(1)
    end
  end

  describe '#gamma_fnc' do
    it '#gamma_fnc(4) => 6' do
      expect(gamma_fnc(4)).to eq(6)
    end
  end

  describe '#gamma_fnc' do
    it '#gamma_fnc(8) => 5040' do
      expect(gamma_fnc(8)).to eq(5040)
    end
  end

  describe '#ice_cream_shop' do
    it "#ice_cream_shop(['vanilla', 'strawberry'], 'blue moon') => false" do
      expect(ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')).to eq(false)
    end
  end

  describe '#ice_cream_shop' do
    it "#ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea') => true" do
      expect(ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')).to eq(true)
    end
  end

  describe '#ice_cream_shop' do
    it "#ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio') => false" do
      expect(ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')).to eq(false)
    end
  end

  describe "#ice_cream_shop" do
    it "#ice_cream_shop(['moose tracks'], 'moose tracks') => true" do
      expect(ice_cream_shop(['moose tracks'], 'moose tracks')).to eq(true)
    end
  end

  describe "#ice_cream_shop" do
    it "#ice_cream_shop([], 'honey lavender') => false" do
      expect(ice_cream_shop([], 'honey lavender')).to eq(false)
    end
  end

  describe '#reverse' do
    it '#reverse("house") => "esuoh"' do
      expect(reverse("house")).to eq("esuoh")
    end
  end

  describe '#reverse' do
    it '#reverse("dog") => "god"' do
      expect(reverse("dog")).to eq("god")
    end
  end

  describe '#reverse' do
    it '#reverse("atom") => "mota"' do
      expect(reverse("atom")).to eq("mota")
    end
  end

  describe '#reverse' do
    it '#reverse("q") => "q"' do
      expect(reverse("q")).to eq("q")
    end
  end

  describe '#reverse' do
    it '#reverse("id") => "di"' do
      expect(reverse("id")).to eq("di")
    end
  end

  describe '#reverse' do
    it '#reverse("") => ""' do
      expect(reverse("")).to eq("")
    end
  end

end
