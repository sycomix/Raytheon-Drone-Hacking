.class Lorg/apache/sanselan/formats/psd/ImageResourceBlock;
.super Ljava/lang/Object;
.source "ImageResourceBlock.java"


# instance fields
.field protected final data:[B

.field protected final id:I

.field protected final nameData:[B


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 0
    .param p1, "ID"    # I
    .param p2, "NameData"    # [B
    .param p3, "Data"    # [B

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->id:I

    .line 32
    iput-object p2, p0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->nameData:[B

    .line 33
    iput-object p3, p0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->data:[B

    .line 34
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 38
    const-string v0, "getName"

    iget-object v1, p0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->nameData:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 39
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/sanselan/formats/psd/ImageResourceBlock;->nameData:[B

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
