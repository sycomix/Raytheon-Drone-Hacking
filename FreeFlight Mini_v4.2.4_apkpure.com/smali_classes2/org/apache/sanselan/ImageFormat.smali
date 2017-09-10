.class public Lorg/apache/sanselan/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# static fields
.field public static final IMAGE_FORMAT_BMP:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_GIF:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_ICO:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_JBIG2:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_JPEG:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_PGM:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_PNG:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_PNM:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_PSD:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_TGA:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_TIFF:Lorg/apache/sanselan/ImageFormat;

.field public static final IMAGE_FORMAT_UNKNOWN:Lorg/apache/sanselan/ImageFormat;


# instance fields
.field public final actual:Z

.field public final extension:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_UNKNOWN:Lorg/apache/sanselan/ImageFormat;

    .line 62
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "PNG"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PNG:Lorg/apache/sanselan/ImageFormat;

    .line 63
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "GIF"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_GIF:Lorg/apache/sanselan/ImageFormat;

    .line 64
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "ICO"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_ICO:Lorg/apache/sanselan/ImageFormat;

    .line 65
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "TIFF"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_TIFF:Lorg/apache/sanselan/ImageFormat;

    .line 66
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "JPEG"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_JPEG:Lorg/apache/sanselan/ImageFormat;

    .line 67
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "BMP"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_BMP:Lorg/apache/sanselan/ImageFormat;

    .line 68
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "PSD"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PSD:Lorg/apache/sanselan/ImageFormat;

    .line 69
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "PBM"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;

    .line 70
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "PGM"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PGM:Lorg/apache/sanselan/ImageFormat;

    .line 71
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "PPM"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;

    .line 72
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "PNM"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PNM:Lorg/apache/sanselan/ImageFormat;

    .line 73
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "TGA"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_TGA:Lorg/apache/sanselan/ImageFormat;

    .line 74
    new-instance v0, Lorg/apache/sanselan/ImageFormat;

    const-string v1, "JBig2"

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_JBIG2:Lorg/apache/sanselan/ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/sanselan/ImageFormat;->name:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lorg/apache/sanselan/ImageFormat;->extension:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/sanselan/ImageFormat;->actual:Z

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actual"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/apache/sanselan/ImageFormat;->name:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lorg/apache/sanselan/ImageFormat;->extension:Ljava/lang/String;

    .line 29
    iput-boolean p2, p0, Lorg/apache/sanselan/ImageFormat;->actual:Z

    .line 30
    return-void
.end method

.method public static final getAllFormats()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    .prologue
    .line 78
    const/16 v1, 0xd

    new-array v0, v1, [Lorg/apache/sanselan/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_UNKNOWN:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PNG:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_GIF:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_TIFF:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_JPEG:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_BMP:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PSD:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PGM:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PNM:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_TGA:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_JBIG2:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    .line 86
    .local v0, "result":[Lorg/apache/sanselan/ImageFormat;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    instance-of v1, p1, Lorg/apache/sanselan/ImageFormat;

    if-nez v1, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 46
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 44
    check-cast v0, Lorg/apache/sanselan/ImageFormat;

    .line 46
    .local v0, "other":Lorg/apache/sanselan/ImageFormat;
    iget-object v1, v0, Lorg/apache/sanselan/ImageFormat;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/sanselan/ImageFormat;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/sanselan/ImageFormat;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/ImageFormat;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/ImageFormat;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
