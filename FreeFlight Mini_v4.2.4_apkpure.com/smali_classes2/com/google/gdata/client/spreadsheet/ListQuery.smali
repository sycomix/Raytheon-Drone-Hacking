.class public Lcom/google/gdata/client/spreadsheet/ListQuery;
.super Lcom/google/gdata/client/Query;
.source "ListQuery.java"


# static fields
.field public static final ORDERBY:Ljava/lang/String; = "orderby"

.field public static final ORDERBY_COLUMN:Ljava/lang/String; = "column"

.field public static final ORDERBY_POSITION:Ljava/lang/String; = "position"

.field public static final REVERSE:Ljava/lang/String; = "reverse"

.field public static final SPREADSHEET_QUERY:Ljava/lang/String; = "sq"


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getOrderBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "orderby"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/spreadsheet/ListQuery;->getStringCustomParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpreadsheetQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "sq"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/spreadsheet/ListQuery;->getStringCustomParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReverse()Z
    .locals 1

    .prologue
    .line 158
    const-string v0, "reverse"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/spreadsheet/ListQuery;->getStringCustomParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFullTextQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/google/gdata/client/Query;->setFullTextQuery(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setOrderBy(Ljava/lang/String;)V
    .locals 2
    .param p1, "orderby"    # Ljava/lang/String;

    .prologue
    .line 131
    if-eqz p1, :cond_0

    const-string v0, "position"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "column"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\\s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 134
    :cond_0
    const-string v0, "orderby"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/spreadsheet/ListQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    return-void
.end method

.method public setReverse(Z)V
    .locals 2
    .param p1, "reverse"    # Z

    .prologue
    .line 151
    const-string v1, "reverse"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/spreadsheet/ListQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSortColumn(Ljava/lang/String;)V
    .locals 2
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p1, :cond_0

    const-string v0, "\\s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/spreadsheet/ListQuery;->setOrderBy(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "column:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/spreadsheet/ListQuery;->setOrderBy(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSpreadsheetQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "sq"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/spreadsheet/ListQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
