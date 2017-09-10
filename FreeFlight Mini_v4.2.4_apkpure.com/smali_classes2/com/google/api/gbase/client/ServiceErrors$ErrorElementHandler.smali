.class Lcom/google/api/gbase/client/ServiceErrors$ErrorElementHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "ServiceErrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gbase/client/ServiceErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorElementHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/gbase/client/ServiceErrors;


# direct methods
.method public constructor <init>(Lcom/google/api/gbase/client/ServiceErrors;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/google/api/gbase/client/ServiceErrors$ErrorElementHandler;->this$0:Lcom/google/api/gbase/client/ServiceErrors;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 297
    new-instance v0, Lcom/google/api/gbase/client/ServiceError;

    const-string v1, "type"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "field"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "reason"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/gbase/client/ServiceError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/api/gbase/client/ServiceErrors;->addError(Lcom/google/api/gbase/client/ServiceError;)V

    .line 300
    return-void
.end method
