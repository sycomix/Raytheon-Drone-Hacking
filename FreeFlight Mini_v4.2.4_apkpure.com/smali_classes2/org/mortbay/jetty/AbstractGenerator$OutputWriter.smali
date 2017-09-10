.class public Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;
.super Ljava/io/Writer;
.source "AbstractGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/AbstractGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputWriter"
.end annotation


# static fields
.field private static final WRITE_CONV:I = 0x0

.field private static final WRITE_ISO1:I = 0x1

.field private static final WRITE_UTF8:I = 0x2


# instance fields
.field _generator:Lorg/mortbay/jetty/AbstractGenerator;

.field _out:Lorg/mortbay/jetty/AbstractGenerator$Output;

.field _surrogate:I

.field _writeMode:I


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/AbstractGenerator$Output;)V
    .locals 1
    .param p1, "out"    # Lorg/mortbay/jetty/AbstractGenerator$Output;

    .prologue
    .line 698
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 699
    iput-object p1, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    .line 700
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_generator:Lorg/mortbay/jetty/AbstractGenerator;

    .line 702
    return-void
.end method

.method private getConverter()Ljava/io/Writer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_converter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v2, v2, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    iget-object v3, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v3, v3, Lorg/mortbay/jetty/AbstractGenerator$Output;->_characterEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_converter:Ljava/io/Writer;

    .line 915
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_converter:Ljava/io/Writer;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->close()V

    .line 731
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    invoke-virtual {v0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->flush()V

    .line 737
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 707
    if-eqz p1, :cond_0

    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_writeMode:I

    .line 722
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iput-object p1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_characterEncoding:Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    if-nez v0, :cond_2

    .line 724
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    new-instance v1, Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/mortbay/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    .line 725
    :cond_2
    return-void

    .line 711
    :cond_3
    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 713
    const/4 v0, 0x2

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_writeMode:I

    goto :goto_0

    .line 717
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_writeMode:I

    .line 718
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_characterEncoding:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/mortbay/jetty/AbstractGenerator$Output;->_converter:Ljava/io/Writer;

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 742
    :goto_0
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 744
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->write(Ljava/lang/String;II)V

    .line 745
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v1

    add-int/2addr p2, v1

    .line 746
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v1

    sub-int/2addr p3, v1

    goto :goto_0

    .line 749
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v1, v1, Lorg/mortbay/jetty/AbstractGenerator$Output;->_chars:[C

    if-nez v1, :cond_1

    .line 751
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v2

    new-array v2, v2, [C

    iput-object v2, v1, Lorg/mortbay/jetty/AbstractGenerator$Output;->_chars:[C

    .line 753
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    iget-object v0, v1, Lorg/mortbay/jetty/AbstractGenerator$Output;->_chars:[C

    .line 754
    .local v0, "chars":[C
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 755
    invoke-virtual {p0, v0, v3, p3}, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->write([CII)V

    .line 756
    return-void
.end method

.method public write([CII)V
    .locals 12
    .param p1, "s"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3f

    .line 761
    iget-object v8, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_out:Lorg/mortbay/jetty/AbstractGenerator$Output;

    .line 763
    .local v8, "out":Lorg/mortbay/jetty/AbstractGenerator$Output;
    :goto_0
    if-lez p3, :cond_13

    .line 765
    iget-object v10, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v10}, Lorg/mortbay/util/ByteArrayOutputStream2;->reset()V

    .line 766
    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v10

    if-le p3, v10, :cond_0

    invoke-static {}, Lorg/mortbay/jetty/AbstractGenerator;->access$100()I

    move-result v4

    .line 768
    .local v4, "chars":I
    :goto_1
    iget v10, p0, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->_writeMode:I

    packed-switch v10, :pswitch_data_0

    .line 901
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9}, Ljava/lang/IllegalStateException;-><init>()V

    throw v9

    .end local v4    # "chars":I
    :cond_0
    move v4, p3

    .line 766
    goto :goto_1

    .line 772
    .restart local v4    # "chars":I
    :pswitch_0
    invoke-direct {p0}, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->getConverter()Ljava/io/Writer;

    move-result-object v6

    .line 773
    .local v6, "converter":Ljava/io/Writer;
    invoke-virtual {v6, p1, p2, v4}, Ljava/io/Writer;->write([CII)V

    .line 774
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 904
    .end local v6    # "converter":Ljava/io/Writer;
    :cond_1
    :goto_2
    iget-object v10, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v10, v8}, Lorg/mortbay/util/ByteArrayOutputStream2;->writeTo(Ljava/io/OutputStream;)V

    .line 905
    sub-int/2addr p3, v4

    .line 906
    add-int/2addr p2, v4

    .line 907
    goto :goto_0

    .line 780
    :pswitch_1
    iget-object v10, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v10}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    .line 781
    .local v0, "buffer":[B
    iget-object v10, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v10}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v1

    .line 783
    .local v1, "bytes":I
    array-length v10, v0

    sub-int/2addr v10, v1

    if-le v4, v10, :cond_2

    .line 784
    array-length v10, v0

    sub-int v4, v10, v1

    .line 786
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    move v2, v1

    .end local v1    # "bytes":I
    .local v2, "bytes":I
    :goto_3
    if-ge v7, v4, :cond_4

    .line 788
    add-int v10, p2, v7

    aget-char v3, p1, v10

    .line 789
    .local v3, "c":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    const/16 v10, 0x100

    if-ge v3, v10, :cond_3

    .end local v3    # "c":I
    :goto_4
    int-to-byte v10, v3

    aput-byte v10, v0, v2

    .line 786
    add-int/lit8 v7, v7, 0x1

    move v2, v1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    goto :goto_3

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    .restart local v3    # "c":I
    :cond_3
    move v3, v9

    .line 789
    goto :goto_4

    .line 791
    .end local v1    # "bytes":I
    .end local v3    # "c":I
    .restart local v2    # "bytes":I
    :cond_4
    if-ltz v2, :cond_1

    .line 792
    iget-object v10, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v10, v2}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_2

    .line 799
    .end local v0    # "buffer":[B
    .end local v2    # "bytes":I
    .end local v7    # "i":I
    :pswitch_2
    iget-object v10, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v10}, Lorg/mortbay/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    .line 800
    .restart local v0    # "buffer":[B
    iget-object v10, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v10}, Lorg/mortbay/util/ByteArrayOutputStream2;->getCount()I

    move-result v1

    .line 802
    .restart local v1    # "bytes":I
    add-int v10, v1, v4

    array-length v11, v0

    if-le v10, v11, :cond_5

    .line 803
    array-length v10, v0

    sub-int v4, v10, v1

    .line 805
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "i":I
    move v2, v1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :goto_5
    if-ge v7, v4, :cond_14

    .line 807
    add-int v10, p2, v7

    aget-char v5, p1, v10

    .line 809
    .local v5, "code":I
    and-int/lit8 v10, v5, -0x80

    if-nez v10, :cond_8

    .line 812
    add-int/lit8 v10, v2, 0x1

    array-length v11, v0

    if-le v10, v11, :cond_6

    .line 814
    move v4, v7

    move v1, v2

    .line 897
    .end local v2    # "bytes":I
    .end local v5    # "code":I
    .restart local v1    # "bytes":I
    :goto_6
    iget-object v10, v8, Lorg/mortbay/jetty/AbstractGenerator$Output;->_bytes:Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-virtual {v10, v1}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_2

    .line 817
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    .restart local v5    # "code":I
    :cond_6
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    int-to-byte v10, v5

    aput-byte v10, v0, v2

    .line 805
    :cond_7
    add-int/lit8 v7, v7, 0x1

    move v2, v1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    goto :goto_5

    .line 821
    :cond_8
    and-int/lit16 v10, v5, -0x800

    if-nez v10, :cond_a

    .line 824
    add-int/lit8 v10, v2, 0x2

    array-length v11, v0

    if-le v10, v11, :cond_9

    .line 826
    move v4, v7

    move v1, v2

    .line 827
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto :goto_6

    .line 829
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_9
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v10, v5, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 830
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    and-int/lit8 v10, v5, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v1

    move v1, v2

    .line 890
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    :goto_7
    array-length v10, v0

    if-ne v1, v10, :cond_7

    .line 892
    add-int/lit8 v4, v7, 0x1

    .line 893
    goto :goto_6

    .line 832
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_a
    const/high16 v10, -0x10000

    and-int/2addr v10, v5

    if-nez v10, :cond_c

    .line 835
    add-int/lit8 v10, v2, 0x3

    array-length v11, v0

    if-le v10, v11, :cond_b

    .line 837
    move v4, v7

    move v1, v2

    .line 838
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto :goto_6

    .line 840
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_b
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v10, v5, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 841
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    shr-int/lit8 v10, v5, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v1

    .line 842
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    and-int/lit8 v10, v5, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    goto :goto_7

    .line 844
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_c
    const/high16 v10, -0xe00000

    and-int/2addr v10, v5

    if-nez v10, :cond_e

    .line 847
    add-int/lit8 v10, v2, 0x4

    array-length v11, v0

    if-le v10, v11, :cond_d

    .line 849
    move v4, v7

    move v1, v2

    .line 850
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto :goto_6

    .line 852
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_d
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v10, v5, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 853
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    shr-int/lit8 v10, v5, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v1

    .line 854
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v10, v5, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 855
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    and-int/lit8 v10, v5, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v1

    move v1, v2

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto :goto_7

    .line 857
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_e
    const/high16 v10, -0xc000000

    and-int/2addr v10, v5

    if-nez v10, :cond_10

    .line 860
    add-int/lit8 v10, v2, 0x5

    array-length v11, v0

    if-le v10, v11, :cond_f

    .line 862
    move v4, v7

    move v1, v2

    .line 863
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto/16 :goto_6

    .line 865
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_f
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v10, v5, 0x18

    or-int/lit16 v10, v10, 0xf8

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 866
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    shr-int/lit8 v10, v5, 0x12

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v1

    .line 867
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v10, v5, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 868
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    shr-int/lit8 v10, v5, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v1

    .line 869
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    and-int/lit8 v10, v5, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    goto/16 :goto_7

    .line 871
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_10
    const/high16 v10, -0x80000000

    and-int/2addr v10, v5

    if-nez v10, :cond_12

    .line 874
    add-int/lit8 v10, v2, 0x6

    array-length v11, v0

    if-le v10, v11, :cond_11

    .line 876
    move v4, v7

    move v1, v2

    .line 877
    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto/16 :goto_6

    .line 879
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_11
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v10, v5, 0x1e

    or-int/lit16 v10, v10, 0xfc

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 880
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    shr-int/lit8 v10, v5, 0x18

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v1

    .line 881
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v10, v5, 0x12

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 882
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    shr-int/lit8 v10, v5, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v1

    .line 883
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    shr-int/lit8 v10, v5, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 884
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    and-int/lit8 v10, v5, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v1

    move v1, v2

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto/16 :goto_7

    .line 888
    .end local v1    # "bytes":I
    .restart local v2    # "bytes":I
    :cond_12
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    aput-byte v9, v0, v2

    goto/16 :goto_7

    .line 908
    .end local v0    # "buffer":[B
    .end local v1    # "bytes":I
    .end local v4    # "chars":I
    .end local v5    # "code":I
    .end local v7    # "i":I
    :cond_13
    return-void

    .restart local v0    # "buffer":[B
    .restart local v2    # "bytes":I
    .restart local v4    # "chars":I
    .restart local v7    # "i":I
    :cond_14
    move v1, v2

    .end local v2    # "bytes":I
    .restart local v1    # "bytes":I
    goto/16 :goto_6

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
