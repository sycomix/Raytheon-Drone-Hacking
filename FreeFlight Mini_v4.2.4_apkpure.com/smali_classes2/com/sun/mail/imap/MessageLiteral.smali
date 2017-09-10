.class Lcom/sun/mail/imap/MessageLiteral;
.super Ljava/lang/Object;
.source "IMAPFolder.java"

# interfaces
.implements Lcom/sun/mail/iap/Literal;


# instance fields
.field private buf:[B

.field private msg:Ljavax/mail/Message;

.field private msgSize:I


# direct methods
.method public constructor <init>(Ljavax/mail/Message;I)V
    .locals 3
    .param p1, "msg"    # Ljavax/mail/Message;
    .param p2, "maxsize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2477
    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I

    .line 2482
    iput-object p1, p0, Lcom/sun/mail/imap/MessageLiteral;->msg:Ljavax/mail/Message;

    .line 2484
    new-instance v0, Lcom/sun/mail/imap/LengthCounter;

    invoke-direct {v0, p2}, Lcom/sun/mail/imap/LengthCounter;-><init>(I)V

    .line 2485
    .local v0, "lc":Lcom/sun/mail/imap/LengthCounter;
    new-instance v1, Lcom/sun/mail/util/CRLFOutputStream;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2486
    .local v1, "os":Ljava/io/OutputStream;
    invoke-virtual {p1, v1}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 2487
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 2488
    invoke-virtual {v0}, Lcom/sun/mail/imap/LengthCounter;->getSize()I

    move-result v2

    iput v2, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I

    .line 2489
    invoke-virtual {v0}, Lcom/sun/mail/imap/LengthCounter;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/MessageLiteral;->buf:[B

    .line 2490
    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    .prologue
    .line 2493
    iget v0, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2499
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/imap/MessageLiteral;->buf:[B

    if-eqz v2, :cond_0

    .line 2500
    iget-object v2, p0, Lcom/sun/mail/imap/MessageLiteral;->buf:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 2510
    :goto_0
    return-void

    .line 2502
    :cond_0
    new-instance v1, Lcom/sun/mail/util/CRLFOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2503
    .end local p1    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/imap/MessageLiteral;->msg:Ljavax/mail/Message;

    invoke-virtual {v2, v1}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local p1    # "os":Ljava/io/OutputStream;
    goto :goto_0

    .line 2505
    :catch_0
    move-exception v0

    .line 2507
    .local v0, "mex":Ljavax/mail/MessagingException;
    :goto_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "MessagingException while appending message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2505
    .end local v0    # "mex":Ljavax/mail/MessagingException;
    .end local p1    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object p1, v1

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local p1    # "os":Ljava/io/OutputStream;
    goto :goto_1
.end method
