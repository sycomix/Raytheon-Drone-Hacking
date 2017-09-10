.class public Lcom/google/gdata/client/finance/PositionQuery;
.super Lcom/google/gdata/client/Query;
.source "PositionQuery.java"


# instance fields
.field private includeReturns:Ljava/lang/Boolean;

.field private inlineTransactions:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/finance/PositionQuery;->includeReturns:Ljava/lang/Boolean;

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/finance/PositionQuery;->inlineTransactions:Ljava/lang/Boolean;

    .line 47
    return-void
.end method


# virtual methods
.method public getIncludeReturns()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/gdata/client/finance/PositionQuery;->includeReturns:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInlineTransactions()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/gdata/client/finance/PositionQuery;->inlineTransactions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setIncludeReturns(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "includeReturns"    # Ljava/lang/Boolean;

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/finance/PositionQuery;->includeReturns:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iput-object p1, p0, Lcom/google/gdata/client/finance/PositionQuery;->includeReturns:Ljava/lang/Boolean;

    .line 77
    const-string v1, "returns"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/finance/PositionQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void

    .line 77
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setInlineTransactions(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "inlineTransactions"    # Ljava/lang/Boolean;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/finance/PositionQuery;->inlineTransactions:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iput-object p1, p0, Lcom/google/gdata/client/finance/PositionQuery;->inlineTransactions:Ljava/lang/Boolean;

    .line 106
    const-string v1, "transactions"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/finance/PositionQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    return-void

    .line 106
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
