class Statement

  HEADER = ["date", "credit", "debit", "balance"]

  def generate_header
    HEADER.join(" || ") + "\n"
  end

  def generate_row(transactions)
    transactions.join(" || ")
  end

end
