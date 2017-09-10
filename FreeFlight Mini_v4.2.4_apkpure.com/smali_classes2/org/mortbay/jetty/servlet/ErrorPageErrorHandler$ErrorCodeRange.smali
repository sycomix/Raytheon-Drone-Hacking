.class Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
.super Ljava/lang/Object;
.source "ErrorPageErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorCodeRange"
.end annotation


# instance fields
.field private _from:I

.field private _to:I

.field private _uri:Ljava/lang/String;

.field private final this$0:Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;IILjava/lang/String;)V
    .locals 2
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 236
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->this$0:Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    if-le p2, p3, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "from>to"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    iput p2, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_from:I

    .line 241
    iput p3, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_to:I

    .line 242
    iput-object p4, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_uri:Ljava/lang/String;

    .line 243
    return-void
.end method


# virtual methods
.method getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_uri:Ljava/lang/String;

    return-object v0
.end method

.method isInRange(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 247
    iget v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_from:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_to:I

    if-gt p1, v0, :cond_0

    .line 249
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_from:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_to:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
