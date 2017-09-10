.class Lcom/google/api/gbase/client/ServiceErrors$ErrorsElementHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "ServiceErrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gbase/client/ServiceErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorsElementHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/gbase/client/ServiceErrors;


# direct methods
.method private constructor <init>(Lcom/google/api/gbase/client/ServiceErrors;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/api/gbase/client/ServiceErrors$ErrorsElementHandler;->this$0:Lcom/google/api/gbase/client/ServiceErrors;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/gbase/client/ServiceErrors;Lcom/google/api/gbase/client/ServiceErrors$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/gbase/client/ServiceErrors;
    .param p2, "x1"    # Lcom/google/api/gbase/client/ServiceErrors$1;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/google/api/gbase/client/ServiceErrors$ErrorsElementHandler;-><init>(Lcom/google/api/gbase/client/ServiceErrors;)V

    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const-string v0, "error"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Lcom/google/api/gbase/client/ServiceErrors$ErrorElementHandler;

    iget-object v1, p0, Lcom/google/api/gbase/client/ServiceErrors$ErrorsElementHandler;->this$0:Lcom/google/api/gbase/client/ServiceErrors;

    invoke-direct {v0, v1, p3}, Lcom/google/api/gbase/client/ServiceErrors$ErrorElementHandler;-><init>(Lcom/google/api/gbase/client/ServiceErrors;Lorg/xml/sax/Attributes;)V

    .line 287
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method
