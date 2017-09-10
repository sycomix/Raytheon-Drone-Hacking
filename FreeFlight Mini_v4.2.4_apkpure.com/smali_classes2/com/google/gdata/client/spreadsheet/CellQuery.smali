.class public Lcom/google/gdata/client/spreadsheet/CellQuery;
.super Lcom/google/gdata/client/Query;
.source "CellQuery.java"


# static fields
.field public static final MAXIMUM_COL:Ljava/lang/String; = "max-col"

.field public static final MAXIMUM_ROW:Ljava/lang/String; = "max-row"

.field public static final MINIMUM_COL:Ljava/lang/String; = "min-col"

.field public static final MINIMUM_ROW:Ljava/lang/String; = "min-row"

.field public static final RANGE:Ljava/lang/String; = "range"

.field public static final RETURN_EMPTY:Ljava/lang/String; = "return-empty"


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getMaximumCol()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 161
    const-string v0, "max-col"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/spreadsheet/CellQuery;->getIntegerCustomParameter(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumRow()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 147
    const-string v0, "max-row"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/spreadsheet/CellQuery;->getIntegerCustomParameter(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumCol()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 154
    const-string v0, "min-col"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/spreadsheet/CellQuery;->getIntegerCustomParameter(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumRow()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 140
    const-string v0, "min-row"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/spreadsheet/CellQuery;->getIntegerCustomParameter(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "range"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/spreadsheet/CellQuery;->getStringCustomParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReturnEmpty()Z
    .locals 1

    .prologue
    .line 175
    const-string v0, "return-empty"

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/spreadsheet/CellQuery;->getStringCustomParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMaximumCol(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    const-string v0, "max-col"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/spreadsheet/CellQuery;->setIntegerCustomParameter(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, "max-col"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/spreadsheet/CellQuery;->setIntegerCustomParameter(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setMaximumRow(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    const-string v0, "max-row"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/spreadsheet/CellQuery;->setIntegerCustomParameter(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v0, "max-row"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/spreadsheet/CellQuery;->setIntegerCustomParameter(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setMinimumCol(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    const-string v0, "min-col"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/spreadsheet/CellQuery;->setIntegerCustomParameter(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "min-col"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/spreadsheet/CellQuery;->setIntegerCustomParameter(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setMinimumRow(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    const-string v0, "min-row"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/spreadsheet/CellQuery;->setIntegerCustomParameter(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "min-row"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/spreadsheet/CellQuery;->setIntegerCustomParameter(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v0, "range"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/spreadsheet/CellQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setReturnEmpty(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 133
    const-string v0, "return-empty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/client/spreadsheet/CellQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method
