.class public abstract Ljavax/servlet/ServletInputStream;
.super Ljava/io/InputStream;
.source "ServletInputStream.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public readLine([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 99
    if-gtz p3, :cond_1

    .line 100
    const/4 v1, 0x0

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    const/4 v1, 0x0

    .line 104
    .local v1, "count":I
    :goto_1
    invoke-virtual {p0}, Ljavax/servlet/ServletInputStream;->read()I

    move-result v0

    .local v0, "c":I
    if-eq v0, v3, :cond_2

    .line 105
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    int-to-byte v4, v0

    aput-byte v4, p1, p2

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    const/16 v4, 0xa

    if-eq v0, v4, :cond_4

    if-ne v1, p3, :cond_3

    move p2, v2

    .line 111
    .end local v2    # "off":I
    .restart local p2    # "off":I
    :cond_2
    :goto_2
    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    .end local p2    # "off":I
    .restart local v2    # "off":I
    :cond_3
    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    :cond_4
    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_2
.end method
