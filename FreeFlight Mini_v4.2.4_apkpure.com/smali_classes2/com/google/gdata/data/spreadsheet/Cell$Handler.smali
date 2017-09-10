.class Lcom/google/gdata/data/spreadsheet/Cell$Handler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "Cell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/spreadsheet/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/spreadsheet/Cell;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/spreadsheet/Cell;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/Cell$Handler;->this$0:Lcom/google/gdata/data/spreadsheet/Cell;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 241
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributeData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 250
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string v1, "row"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Cell$Handler;->this$0:Lcom/google/gdata/data/spreadsheet/Cell;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/gdata/data/spreadsheet/Cell;->access$002(Lcom/google/gdata/data/spreadsheet/Cell;I)I

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    const-string v1, "col"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Cell$Handler;->this$0:Lcom/google/gdata/data/spreadsheet/Cell;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/gdata/data/spreadsheet/Cell;->access$102(Lcom/google/gdata/data/spreadsheet/Cell;I)I

    goto :goto_0

    .line 255
    :cond_2
    const-string v1, "inputValue"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Cell$Handler;->this$0:Lcom/google/gdata/data/spreadsheet/Cell;

    invoke-static {v1, p3}, Lcom/google/gdata/data/spreadsheet/Cell;->access$202(Lcom/google/gdata/data/spreadsheet/Cell;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 257
    :cond_3
    const-string v1, "numericValue"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Cell$Handler;->this$0:Lcom/google/gdata/data/spreadsheet/Cell;

    invoke-static {p3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/gdata/data/spreadsheet/Cell;->access$302(Lcom/google/gdata/data/spreadsheet/Cell;Ljava/lang/Number;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    const-string v2, "Invalid numericValue."

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell$Handler;->this$0:Lcom/google/gdata/data/spreadsheet/Cell;

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Cell$Handler;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/data/spreadsheet/Cell;->access$402(Lcom/google/gdata/data/spreadsheet/Cell;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell$Handler;->this$0:Lcom/google/gdata/data/spreadsheet/Cell;

    invoke-static {v0}, Lcom/google/gdata/data/spreadsheet/Cell;->access$400(Lcom/google/gdata/data/spreadsheet/Cell;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell$Handler;->this$0:Lcom/google/gdata/data/spreadsheet/Cell;

    invoke-static {v0}, Lcom/google/gdata/data/spreadsheet/Cell;->access$400(Lcom/google/gdata/data/spreadsheet/Cell;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell$Handler;->this$0:Lcom/google/gdata/data/spreadsheet/Cell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/gdata/data/spreadsheet/Cell;->access$402(Lcom/google/gdata/data/spreadsheet/Cell;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    :cond_0
    return-void
.end method
