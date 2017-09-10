.class public abstract Lorg/apache/sanselan/formats/tiff/TiffElement;
.super Ljava/lang/Object;
.source "TiffElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/tiff/TiffElement$Stub;,
        Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;


# instance fields
.field public final length:I

.field public final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/apache/sanselan/formats/tiff/TiffElement$1;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/tiff/TiffElement$1;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    .line 29
    iput p2, p0, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    .line 30
    return-void
.end method


# virtual methods
.method public getElementDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/TiffElement;->getElementDescription(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getElementDescription(Z)Ljava/lang/String;
.end method
