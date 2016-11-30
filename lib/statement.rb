class Statement

  HEADER = ["date", "credit", "debit", "balance"]

  def generate_header
    HEADER.join(" || ") + "\n"
  end

  def generate_row(transactions)
    transactions.join(" || ")
  end

  def generate_table(transactions)
    generate_header + (transactions.map {|transaction| generate_row(transaction)}).join("\n")
  end
end
