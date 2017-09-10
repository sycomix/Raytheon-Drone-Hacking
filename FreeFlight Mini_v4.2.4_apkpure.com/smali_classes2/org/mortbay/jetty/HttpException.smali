.class public Lorg/mortbay/jetty/HttpException;
.super Ljava/io/IOException;
.source "HttpException.java"


# instance fields
.field _reason:Ljava/lang/String;

.field _status:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 27
    iput p1, p0, Lorg/mortbay/jetty/HttpException;->_status:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpException;->_reason:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 34
    iput p1, p0, Lorg/mortbay/jetty/HttpException;->_status:I

    .line 35
    iput-object p2, p0, Lorg/mortbay/jetty/HttpException;->_reason:Ljava/lang/String;

    .line 36
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "rootCause"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 41
    iput p1, p0, Lorg/mortbay/jetty/HttpException;->_status:I

    .line 42
    iput-object p2, p0, Lorg/mortbay/jetty/HttpException;->_reason:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p3}, Lorg/mortbay/jetty/HttpException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 44
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/mortbay/jetty/HttpException;->_reason:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/mortbay/jetty/HttpException;->_status:I

    return v0
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/mortbay/jetty/HttpException;->_reason:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 79
    iput p1, p0, Lorg/mortbay/jetty/HttpException;->_status:I

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HttpException("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/HttpException;->_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/HttpException;->_reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
