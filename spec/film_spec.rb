require "film"

describe Film do
  let(:film) do
    described_class.new("Зеленая миля", "Фрэнк Дарабонт", "1999")
  end

  describe "::new" do
    it "assigns instance variables" do
      expect(film.text).to eq "Зеленая миля"
      expect(film.director).to eq "Фрэнк Дарабонт"
      expect(film.year).to eq "1999"
    end
  end

  describe "#to_s" do
    it "returns representation of object into string" do
      expect(film.to_s).to eq "Зеленая миля 1999"
    end
  end
end
