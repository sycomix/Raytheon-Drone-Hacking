.class public final Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;
.super Lorg/apache/sanselan/formats/tiff/TiffElement;
.source "TiffDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/TiffDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImageDataElement"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/sanselan/formats/tiff/TiffDirectory;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/TiffDirectory;II)V
    .locals 0
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 195
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;->this$0:Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 196
    invoke-direct {p0, p2, p3}, Lorg/apache/sanselan/formats/tiff/TiffElement;-><init>(II)V

    .line 197
    return-void
.end method


# virtual methods
.method public getElementDescription(Z)Ljava/lang/String;
    .locals 1
    .param p1, "verbose"    # Z

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ImageDataElement"

    goto :goto_0
.end method
