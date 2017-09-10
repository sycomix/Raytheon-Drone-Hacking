.class Lcom/google/api/gbase/client/AttributeHistogram$AddValueHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "AttributeHistogram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gbase/client/AttributeHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddValueHandler"
.end annotation


# instance fields
.field private final count:I

.field final synthetic this$0:Lcom/google/api/gbase/client/AttributeHistogram;


# direct methods
.method private constructor <init>(Lcom/google/api/gbase/client/AttributeHistogram;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 341
    iput-object p1, p0, Lcom/google/api/gbase/client/AttributeHistogram$AddValueHandler;->this$0:Lcom/google/api/gbase/client/AttributeHistogram;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 342
    new-instance v0, Lcom/google/gdata/data/AttributeHelper;

    invoke-direct {v0, p2}, Lcom/google/gdata/data/AttributeHelper;-><init>(Lorg/xml/sax/Attributes;)V

    .line 343
    .local v0, "helper":Lcom/google/gdata/data/AttributeHelper;
    const-string v1, "count"

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;ZI)I

    move-result v1

    iput v1, p0, Lcom/google/api/gbase/client/AttributeHistogram$AddValueHandler;->count:I

    .line 344
    invoke-virtual {v0}, Lcom/google/gdata/data/AttributeHelper;->assertAllConsumed()V

    .line 345
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/gbase/client/AttributeHistogram;Lorg/xml/sax/Attributes;Lcom/google/api/gbase/client/AttributeHistogram$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/gbase/client/AttributeHistogram;
    .param p2, "x1"    # Lorg/xml/sax/Attributes;
    .param p3, "x2"    # Lcom/google/api/gbase/client/AttributeHistogram$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Lcom/google/api/gbase/client/AttributeHistogram$AddValueHandler;-><init>(Lcom/google/api/gbase/client/AttributeHistogram;Lorg/xml/sax/Attributes;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/api/gbase/client/AttributeHistogram$AddValueHandler;->value:Ljava/lang/String;

    .line 351
    .local v0, "value":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/google/api/gbase/client/AttributeHistogram$AddValueHandler;->this$0:Lcom/google/api/gbase/client/AttributeHistogram;

    iget v2, p0, Lcom/google/api/gbase/client/AttributeHistogram$AddValueHandler;->count:I

    invoke-virtual {v1, v2, v0}, Lcom/google/api/gbase/client/AttributeHistogram;->addValue(ILjava/lang/String;)V

    .line 355
    return-void
.end method
