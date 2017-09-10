.class Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "ServiceExceptionInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/ServiceExceptionInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;


# direct methods
.method private constructor <init>(Lcom/google/gdata/util/ServiceExceptionInitializer;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/util/ServiceExceptionInitializer;
    .param p2, "x1"    # Lcom/google/gdata/util/ServiceExceptionInitializer$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;)V

    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 3
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
    const/4 v2, 0x0

    .line 195
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 196
    const-string v0, "domain"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/google/gdata/util/ServiceExceptionInitializer$DomainHandler;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/ServiceExceptionInitializer$DomainHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V

    .line 212
    :goto_0
    return-object v0

    .line 198
    :cond_0
    const-string v0, "code"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Lcom/google/gdata/util/ServiceExceptionInitializer$CodeHandler;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/ServiceExceptionInitializer$CodeHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V

    goto :goto_0

    .line 200
    :cond_1
    const-string v0, "location"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    new-instance v0, Lcom/google/gdata/util/ServiceExceptionInitializer$LocationHandler;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/ServiceExceptionInitializer$LocationHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V

    goto :goto_0

    .line 202
    :cond_2
    const-string v0, "internalReason"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    new-instance v0, Lcom/google/gdata/util/ServiceExceptionInitializer$InternalReasonHandler;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/ServiceExceptionInitializer$InternalReasonHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V

    goto :goto_0

    .line 204
    :cond_3
    const-string v0, "extendedHelp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    new-instance v0, Lcom/google/gdata/util/ServiceExceptionInitializer$ExtendedHelpHandler;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/ServiceExceptionInitializer$ExtendedHelpHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V

    goto :goto_0

    .line 206
    :cond_4
    const-string v0, "sendReport"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    new-instance v0, Lcom/google/gdata/util/ServiceExceptionInitializer$SendReportHandler;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/ServiceExceptionInitializer$SendReportHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V

    goto :goto_0

    .line 208
    :cond_5
    const-string v0, "debugInfo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 209
    new-instance v0, Lcom/google/gdata/util/ServiceExceptionInitializer$DebugInfoHandler;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/ServiceExceptionInitializer$DebugInfoHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V

    goto :goto_0

    .line 212
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method
