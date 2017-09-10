.class Lcom/google/gdata/data/spreadsheet/ColCount$1;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "ColCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/data/spreadsheet/ColCount;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/spreadsheet/ColCount;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/spreadsheet/ColCount;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/ColCount$1;->this$0:Lcom/google/gdata/data/spreadsheet/ColCount;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/ColCount$1;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/ColCount$1;->this$0:Lcom/google/gdata/data/spreadsheet/ColCount;

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/ColCount$1;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/gdata/data/spreadsheet/ColCount;->access$002(Lcom/google/gdata/data/spreadsheet/ColCount;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/ColCount$1;->this$0:Lcom/google/gdata/data/spreadsheet/ColCount;

    invoke-static {v0}, Lcom/google/gdata/data/spreadsheet/ColCount;->access$000(Lcom/google/gdata/data/spreadsheet/ColCount;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 102
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string v1, "The count must be specified."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method
