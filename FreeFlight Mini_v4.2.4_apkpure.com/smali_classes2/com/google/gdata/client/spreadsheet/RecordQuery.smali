.class public Lcom/google/gdata/client/spreadsheet/RecordQuery;
.super Lcom/google/gdata/client/Query;
.source "RecordQuery.java"


# instance fields
.field private orderBy:Ljava/lang/String;

.field private reverse:Ljava/lang/Boolean;

.field private spreadsheetQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/spreadsheet/RecordQuery;->reverse:Ljava/lang/Boolean;

    .line 48
    return-void
.end method


# virtual methods
.method public getOrderBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/RecordQuery;->orderBy:Ljava/lang/String;

    return-object v0
.end method

.method public getReverse()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/RecordQuery;->reverse:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSpreadsheetQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/RecordQuery;->spreadsheetQuery:Ljava/lang/String;

    return-object v0
.end method

.method public setOrderBy(Ljava/lang/String;)V
    .locals 1
    .param p1, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/RecordQuery;->orderBy:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 71
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/spreadsheet/RecordQuery;->orderBy:Ljava/lang/String;

    .line 72
    const-string v0, "orderby"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/spreadsheet/RecordQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/RecordQuery;->orderBy:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setReverse(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "reverse"    # Ljava/lang/Boolean;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/RecordQuery;->reverse:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iput-object p1, p0, Lcom/google/gdata/client/spreadsheet/RecordQuery;->reverse:Ljava/lang/Boolean;

    .line 100
    const-string v1, "reverse"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/spreadsheet/RecordQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1
    return-void

    .line 100
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setSpreadsheetQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "spreadsheetQuery"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/RecordQuery;->spreadsheetQuery:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 125
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/spreadsheet/RecordQuery;->spreadsheetQuery:Ljava/lang/String;

    .line 126
    const-string v0, "sq"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/spreadsheet/RecordQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/RecordQuery;->spreadsheetQuery:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
