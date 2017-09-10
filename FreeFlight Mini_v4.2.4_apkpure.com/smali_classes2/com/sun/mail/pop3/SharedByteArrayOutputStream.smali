.class Lcom/sun/mail/pop3/SharedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "Protocol.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 413
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 414
    return-void
.end method


# virtual methods
.method public toStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 417
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method
