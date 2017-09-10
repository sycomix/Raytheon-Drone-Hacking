.class Lcom/google/gdata/data/batch/BatchStatus$BatchStatusElementHandler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "BatchStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/batch/BatchStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchStatusElementHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/batch/BatchStatus;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/batch/BatchStatus;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchStatus$BatchStatusElementHandler;->this$0:Lcom/google/gdata/data/batch/BatchStatus;

    .line 198
    const-class v5, Lcom/google/gdata/data/batch/BatchStatus;

    invoke-direct {p0, p1, p2, v5}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 199
    const-string v5, "code"

    invoke-interface {p3, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/gdata/data/batch/BatchStatus;->setCode(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    const-string v5, "reason"

    invoke-interface {p3, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "reason":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 214
    invoke-virtual {p1, v4}, Lcom/google/gdata/data/batch/BatchStatus;->setReason(Ljava/lang/String;)V

    .line 217
    :cond_1
    const-string v5, "content-type"

    invoke-interface {p3, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 220
    :try_start_1
    new-instance v5, Lcom/google/gdata/util/ContentType;

    invoke-direct {v5, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/google/gdata/data/batch/BatchStatus;->setContentType(Lcom/google/gdata/util/ContentType;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :cond_2
    return-void

    .line 203
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v4    # "reason":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/google/gdata/util/ParseException;

    sget-object v5, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v5, v5, Lcom/google/gdata/client/CoreErrorDomain;->invalidIntegerAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v3, v5, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 206
    .local v3, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid integer value for code attribute : \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 208
    throw v3

    .line 221
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "pe":Lcom/google/gdata/util/ParseException;
    .restart local v1    # "contentType":Ljava/lang/String;
    .restart local v4    # "reason":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/google/gdata/util/ParseException;

    sget-object v5, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v5, v5, Lcom/google/gdata/client/CoreErrorDomain;->invalidContentType:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v3, v5, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 224
    .restart local v3    # "pe":Lcom/google/gdata/util/ParseException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid content type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 225
    throw v3
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/batch/BatchStatus;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;Lcom/google/gdata/data/batch/BatchStatus$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/batch/BatchStatus;
    .param p2, "x1"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "x2"    # Lorg/xml/sax/Attributes;
    .param p4, "x3"    # Lcom/google/gdata/data/batch/BatchStatus$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/data/batch/BatchStatus$BatchStatusElementHandler;-><init>(Lcom/google/gdata/data/batch/BatchStatus;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus$BatchStatusElementHandler;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchStatus$BatchStatusElementHandler;->this$0:Lcom/google/gdata/data/batch/BatchStatus;

    iget-object v1, p0, Lcom/google/gdata/data/batch/BatchStatus$BatchStatusElementHandler;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/batch/BatchStatus;->setContent(Ljava/lang/String;)V

    .line 235
    :cond_0
    return-void
.end method
