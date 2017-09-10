.class Lcom/sun/mail/imap/LengthCounter;
.super Ljava/io/OutputStream;
.source "IMAPFolder.java"


# instance fields
.field private buf:[B

.field private maxsize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxsize"    # I

    .prologue
    .line 2523
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2519
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    .line 2524
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2525
    iput p1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    .line 2526
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 2573
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    return v0
.end method

.method public write(I)V
    .locals 5
    .param p1, "b"    # I

    .prologue
    const/4 v4, 0x0

    .line 2529
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int/lit8 v1, v2, 0x1

    .line 2530
    .local v1, "newsize":I
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v2, :cond_0

    .line 2531
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v1, v2, :cond_1

    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-ltz v2, :cond_1

    .line 2532
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2542
    :cond_0
    :goto_0
    iput v1, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    .line 2543
    return-void

    .line 2533
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v2, v2

    if-le v1, v2, :cond_2

    .line 2534
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v0, v2, [B

    .line 2535
    .local v0, "newbuf":[B
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2536
    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2537
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_0

    .line 2539
    .end local v0    # "newbuf":[B
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2569
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/imap/LengthCounter;->write([BII)V

    .line 2570
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 2546
    if-ltz p2, :cond_0

    array-length v2, p1

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-gez v2, :cond_1

    .line 2548
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2549
    :cond_1
    if-nez p3, :cond_2

    .line 2566
    :goto_0
    return-void

    .line 2552
    :cond_2
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int v1, v2, p3

    .line 2553
    .local v1, "newsize":I
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v2, :cond_3

    .line 2554
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v1, v2, :cond_4

    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-ltz v2, :cond_4

    .line 2555
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2565
    :cond_3
    :goto_1
    iput v1, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    goto :goto_0

    .line 2556
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v2, v2

    if-le v1, v2, :cond_5

    .line 2557
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v0, v2, [B

    .line 2558
    .local v0, "newbuf":[B
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2559
    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2560
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 2562
    .end local v0    # "newbuf":[B
    :cond_5
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method
