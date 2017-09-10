.class public Lcom/google/gdata/data/OutOfLineContent$AtomHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "OutOfLineContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/OutOfLineContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AtomHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/OutOfLineContent;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/OutOfLineContent;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;->this$0:Lcom/google/gdata/data/OutOfLineContent;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 170
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    const-string v1, "type"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;->this$0:Lcom/google/gdata/data/OutOfLineContent;

    new-instance v2, Lcom/google/gdata/util/ContentType;

    invoke-direct {v2, p3}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/google/gdata/data/OutOfLineContent;->mimeType:Lcom/google/gdata/util/ContentType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidMimeType:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 178
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const-string v1, "src"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;->this$0:Lcom/google/gdata/data/OutOfLineContent;

    invoke-virtual {p0, p3}, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;->getAbsoluteUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/gdata/data/OutOfLineContent;->uri:Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_2
    const-string v1, "http://schemas.google.com/g/2005"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "etag"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;->this$0:Lcom/google/gdata/data/OutOfLineContent;

    invoke-virtual {v1, p3}, Lcom/google/gdata/data/OutOfLineContent;->setEtag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;->this$0:Lcom/google/gdata/data/OutOfLineContent;

    iget-object v0, v0, Lcom/google/gdata/data/OutOfLineContent;->uri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingSrcAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;->this$0:Lcom/google/gdata/data/OutOfLineContent;

    iget-object v1, p0, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;->xmlLang:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/OutOfLineContent;->lang:Ljava/lang/String;

    .line 199
    invoke-super {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;->processEndElement()V

    .line 200
    return-void
.end method
