.class public Lcom/google/gdata/client/spreadsheet/TableQuery;
.super Lcom/google/gdata/client/Query;
.source "TableQuery.java"


# instance fields
.field private titleExact:Ljava/lang/Boolean;

.field private titleQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getTitleExact()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/TableQuery;->titleExact:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTitleQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/TableQuery;->titleQuery:Ljava/lang/String;

    return-object v0
.end method

.method public setTitleExact(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "titleExact"    # Ljava/lang/Boolean;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/TableQuery;->titleExact:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 94
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/spreadsheet/TableQuery;->titleExact:Ljava/lang/Boolean;

    .line 95
    const-string v1, "title-exact"

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/spreadsheet/TableQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/TableQuery;->titleExact:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setTitleQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "titleQuery"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/TableQuery;->titleQuery:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 68
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/spreadsheet/TableQuery;->titleQuery:Ljava/lang/String;

    .line 69
    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/spreadsheet/TableQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/TableQuery;->titleQuery:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
