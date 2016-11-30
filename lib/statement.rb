class Statement

  HEADER = ["date", "credit", "debit", "balance"]

  def generate_header
    HEADER.join(" || ") + "\n"
  end

end
