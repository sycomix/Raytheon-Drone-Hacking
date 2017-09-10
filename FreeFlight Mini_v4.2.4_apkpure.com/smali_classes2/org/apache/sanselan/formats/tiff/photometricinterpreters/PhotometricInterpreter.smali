.class public abstract Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.super Ljava/lang/Object;
.source "PhotometricInterpreter.java"


# instance fields
.field protected final bitsPerSample:[I

.field protected final height:I

.field protected final predictor:I

.field protected final samplesPerPixel:I

.field protected final width:I


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0
    .param p1, "fSamplesPerPixel"    # I
    .param p2, "fBitsPerSample"    # [I
    .param p3, "Predictor"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;->samplesPerPixel:I

    .line 36
    iput-object p2, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;->bitsPerSample:[I

    .line 37
    iput p3, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;->predictor:I

    .line 38
    iput p4, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;->width:I

    .line 39
    iput p5, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;->height:I

    .line 40
    return-void
.end method


# virtual methods
.method public dumpstats()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    return-void
.end method

.method public abstract interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
