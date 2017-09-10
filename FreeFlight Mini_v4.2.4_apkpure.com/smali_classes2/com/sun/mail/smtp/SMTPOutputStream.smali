.class public Lcom/sun/mail/smtp/SMTPOutputStream;
.super Lcom/sun/mail/util/CRLFOutputStream;
.source "SMTPOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2e

    .line 50
    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    if-ne p1, v2, :cond_1

    .line 51
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 54
    :cond_1
    invoke-super {p0, p1}, Lcom/sun/mail/util/CRLFOutputStream;->write(I)V

    .line 55
    return-void
.end method

.method public write([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2e

    const/16 v3, 0xa

    .line 61
    iget v4, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    move v1, v3

    .line 62
    .local v1, "lastc":I
    :goto_0
    move v2, p2

    .line 64
    .local v2, "start":I
    add-int/2addr p3, p2

    .line 65
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_3

    .line 66
    if-eq v1, v3, :cond_0

    const/16 v4, 0xd

    if-ne v1, v4, :cond_1

    :cond_0
    aget-byte v4, p1, v0

    if-ne v4, v6, :cond_1

    .line 67
    sub-int v4, v0, v2

    invoke-super {p0, p1, v2, v4}, Lcom/sun/mail/util/CRLFOutputStream;->write([BII)V

    .line 68
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 69
    move v2, v0

    .line 71
    :cond_1
    aget-byte v1, p1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    .end local v0    # "i":I
    .end local v1    # "lastc":I
    .end local v2    # "start":I
    :cond_2
    iget v1, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    goto :goto_0

    .line 73
    .restart local v0    # "i":I
    .restart local v1    # "lastc":I
    .restart local v2    # "start":I
    :cond_3
    sub-int v3, p3, v2

    if-lez v3, :cond_4

    .line 74
    sub-int v3, p3, v2

    invoke-super {p0, p1, v2, v3}, Lcom/sun/mail/util/CRLFOutputStream;->write([BII)V

    .line 75
    :cond_4
    return-void
.end method
