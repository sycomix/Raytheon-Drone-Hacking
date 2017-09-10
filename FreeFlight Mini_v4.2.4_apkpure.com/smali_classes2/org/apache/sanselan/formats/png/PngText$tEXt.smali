.class public Lorg/apache/sanselan/formats/png/PngText$tEXt;
.super Lorg/apache/sanselan/formats/png/PngText;
.source "PngText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/png/PngText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tEXt"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/formats/png/PngText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
