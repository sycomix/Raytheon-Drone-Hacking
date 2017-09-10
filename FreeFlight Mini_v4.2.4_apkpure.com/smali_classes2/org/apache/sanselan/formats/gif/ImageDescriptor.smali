.class public Lorg/apache/sanselan/formats/gif/ImageDescriptor;
.super Lorg/apache/sanselan/formats/gif/GIFBlock;
.source "ImageDescriptor.java"


# instance fields
.field public final imageData:[B

.field public final imageHeight:I

.field public final imageLeftPosition:I

.field public final imageTopPosition:I

.field public final imageWidth:I

.field public final interlaceFlag:Z

.field public final localColorTable:[B

.field public final localColorTableFlag:Z

.field public final packedFields:B

.field public final sizeOfLocalColorTable:B

.field public final sortFlag:Z


# direct methods
.method public constructor <init>(IIIIIBZZZB[B[B)V
    .locals 0
    .param p1, "blockCode"    # I
    .param p2, "ImageLeftPosition"    # I
    .param p3, "ImageTopPosition"    # I
    .param p4, "ImageWidth"    # I
    .param p5, "ImageHeight"    # I
    .param p6, "PackedFields"    # B
    .param p7, "LocalColorTableFlag"    # Z
    .param p8, "InterlaceFlag"    # Z
    .param p9, "SortFlag"    # Z
    .param p10, "SizeofLocalColorTable"    # B
    .param p11, "LocalColorTable"    # [B
    .param p12, "ImageData"    # [B

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/gif/GIFBlock;-><init>(I)V

    .line 44
    iput p2, p0, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->imageLeftPosition:I

    .line 45
    iput p3, p0, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->imageTopPosition:I

    .line 46
    iput p4, p0, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->imageWidth:I

    .line 47
    iput p5, p0, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->imageHeight:I

    .line 48
    iput-byte p6, p0, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->packedFields:B

    .line 49
    iput-boolean p7, p0, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->localColorTableFlag:Z

    .line 50
    iput-boolean p8, p0, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->interlaceFlag:Z

    .line 51
    iput-boolean p9, p0, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->sortFlag:Z

    .line 52
    iput-byte p10, p0, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->sizeOfLocalColorTable:B

    .line 54
    iput-object p11, p0, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->localColorTable:[B

    .line 55
    iput-object p12, p0, Lorg/apache/sanselan/formats/gif/ImageDescriptor;->imageData:[B

    .line 56
    return-void
.end method
