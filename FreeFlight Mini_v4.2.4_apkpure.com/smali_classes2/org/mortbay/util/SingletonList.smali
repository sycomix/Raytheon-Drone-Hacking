.class public Lorg/mortbay/util/SingletonList;
.super Ljava/util/AbstractList;
.source "SingletonList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/util/SingletonList$SIterator;
    }
.end annotation


# instance fields
.field private o:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/mortbay/util/SingletonList;->o:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method static access$000(Lorg/mortbay/util/SingletonList;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/mortbay/util/SingletonList;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/mortbay/util/SingletonList;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public static newSingletonList(Ljava/lang/Object;)Lorg/mortbay/util/SingletonList;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 42
    new-instance v0, Lorg/mortbay/util/SingletonList;

    invoke-direct {v0, p0}, Lorg/mortbay/util/SingletonList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/SingletonList;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lorg/mortbay/util/SingletonList$SIterator;

    invoke-direct {v0, p0}, Lorg/mortbay/util/SingletonList$SIterator;-><init>(Lorg/mortbay/util/SingletonList;)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lorg/mortbay/util/SingletonList$SIterator;

    invoke-direct {v0, p0}, Lorg/mortbay/util/SingletonList$SIterator;-><init>(Lorg/mortbay/util/SingletonList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 68
    new-instance v0, Lorg/mortbay/util/SingletonList$SIterator;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/util/SingletonList$SIterator;-><init>(Lorg/mortbay/util/SingletonList;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method
