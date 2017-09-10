.class public Lcom/google/gdata/client/finance/FinanceUtilities;
.super Ljava/lang/Object;
.source "FinanceUtilities.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makePortfolioEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/finance/PortfolioEntry;
    .locals 3
    .param p0, "portfolioName"    # Ljava/lang/String;
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v1, Lcom/google/gdata/data/finance/PortfolioEntry;

    invoke-direct {v1}, Lcom/google/gdata/data/finance/PortfolioEntry;-><init>()V

    .line 54
    .local v1, "entry":Lcom/google/gdata/data/finance/PortfolioEntry;
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v2, p0}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/finance/PortfolioEntry;->setTitle(Lcom/google/gdata/data/TextConstruct;)V

    .line 55
    :cond_0
    new-instance v0, Lcom/google/gdata/data/finance/PortfolioData;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/PortfolioData;-><init>()V

    .line 56
    .local v0, "data":Lcom/google/gdata/data/finance/PortfolioData;
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/PortfolioData;->setCurrencyCode(Ljava/lang/String;)V

    .line 57
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/gdata/data/finance/PortfolioEntry;->setPortfolioData(Lcom/google/gdata/data/finance/PortfolioData;)V

    .line 58
    return-object v1
.end method

.method public static makeTransactionEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/finance/TransactionEntry;
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "shares"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/String;
    .param p4, "commission"    # Ljava/lang/String;
    .param p5, "currency"    # Ljava/lang/String;
    .param p6, "notes"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v2, Lcom/google/gdata/data/finance/TransactionEntry;

    invoke-direct {v2}, Lcom/google/gdata/data/finance/TransactionEntry;-><init>()V

    .line 92
    .local v2, "entry":Lcom/google/gdata/data/finance/TransactionEntry;
    new-instance v1, Lcom/google/gdata/data/finance/TransactionData;

    invoke-direct {v1}, Lcom/google/gdata/data/finance/TransactionData;-><init>()V

    .line 93
    .local v1, "data":Lcom/google/gdata/data/finance/TransactionData;
    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p0, "Buy"

    .line 94
    :cond_0
    invoke-virtual {v1, p0}, Lcom/google/gdata/data/finance/TransactionData;->setType(Ljava/lang/String;)V

    .line 95
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "T00:00:00.000Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/gdata/data/DateTime;->parseDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/gdata/data/finance/TransactionData;->setDate(Lcom/google/gdata/data/DateTime;)V

    .line 96
    :cond_1
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/gdata/data/finance/TransactionData;->setShares(Ljava/lang/Double;)V

    .line 97
    :cond_2
    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 98
    new-instance v3, Lcom/google/gdata/data/finance/Price;

    invoke-direct {v3}, Lcom/google/gdata/data/finance/Price;-><init>()V

    .line 99
    .local v3, "p":Lcom/google/gdata/data/finance/Price;
    new-instance v4, Lcom/google/gdata/data/extensions/Money;

    invoke-static {p3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v4, v5, p5}, Lcom/google/gdata/data/extensions/Money;-><init>(Ljava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/gdata/data/finance/Price;->addMoney(Lcom/google/gdata/data/extensions/Money;)V

    .line 100
    invoke-virtual {v1, v3}, Lcom/google/gdata/data/finance/TransactionData;->setPrice(Lcom/google/gdata/data/finance/Price;)V

    .line 102
    .end local v3    # "p":Lcom/google/gdata/data/finance/Price;
    :cond_3
    const-string v4, ""

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 103
    new-instance v0, Lcom/google/gdata/data/finance/Commission;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/Commission;-><init>()V

    .line 104
    .local v0, "c":Lcom/google/gdata/data/finance/Commission;
    new-instance v4, Lcom/google/gdata/data/extensions/Money;

    invoke-static {p4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v4, v5, p5}, Lcom/google/gdata/data/extensions/Money;-><init>(Ljava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/gdata/data/finance/Commission;->addMoney(Lcom/google/gdata/data/extensions/Money;)V

    .line 105
    invoke-virtual {v1, v0}, Lcom/google/gdata/data/finance/TransactionData;->setCommission(Lcom/google/gdata/data/finance/Commission;)V

    .line 107
    .end local v0    # "c":Lcom/google/gdata/data/finance/Commission;
    :cond_4
    const-string v4, ""

    invoke-virtual {p6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1, p6}, Lcom/google/gdata/data/finance/TransactionData;->setNotes(Ljava/lang/String;)V

    .line 108
    :cond_5
    invoke-virtual {v2, v1}, Lcom/google/gdata/data/finance/TransactionEntry;->setTransactionData(Lcom/google/gdata/data/finance/TransactionData;)V

    .line 109
    return-object v2
.end method
