.class public Lorg/apache/sanselan/formats/png/PngText$iTXt;
.super Lorg/apache/sanselan/formats/png/PngText;
.source "PngText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/png/PngText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "iTXt"
.end annotation


# instance fields
.field public final languageTag:Ljava/lang/String;

.field public final translatedKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "languageTag"    # Ljava/lang/String;
    .param p4, "translatedKeyword"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/formats/png/PngText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput-object p3, p0, Lorg/apache/sanselan/formats/png/PngText$iTXt;->languageTag:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lorg/apache/sanselan/formats/png/PngText$iTXt;->translatedKeyword:Ljava/lang/String;

    .line 68
    return-void
.end method
