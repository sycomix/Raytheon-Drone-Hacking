.class public Lorg/mortbay/io/View$CaseInsensitive;
.super Lorg/mortbay/io/View;
.source "View.java"

# interfaces
.implements Lorg/mortbay/io/Buffer$CaseInsensitve;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/io/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaseInsensitive"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lorg/mortbay/io/View;-><init>()V

    .line 220
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffer;)V
    .locals 0
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffer;IIII)V
    .locals 0
    .param p1, "buffer"    # Lorg/mortbay/io/Buffer;
    .param p2, "mark"    # I
    .param p3, "get"    # I
    .param p4, "put"    # I
    .param p5, "access"    # I

    .prologue
    .line 224
    invoke-direct/range {p0 .. p5}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;IIII)V

    .line 225
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 234
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mortbay/io/Buffer;

    invoke-interface {v0, p0}, Lorg/mortbay/io/Buffer;->equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lorg/mortbay/io/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
