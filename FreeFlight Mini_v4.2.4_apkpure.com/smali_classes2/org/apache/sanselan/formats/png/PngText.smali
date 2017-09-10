.class public abstract Lorg/apache/sanselan/formats/png/PngText;
.super Ljava/lang/Object;
.source "PngText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/png/PngText$iTXt;,
        Lorg/apache/sanselan/formats/png/PngText$zTXt;,
        Lorg/apache/sanselan/formats/png/PngText$tEXt;
    }
.end annotation


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/apache/sanselan/formats/png/PngText;->keyword:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lorg/apache/sanselan/formats/png/PngText;->text:Ljava/lang/String;

    .line 25
    return-void
.end method
