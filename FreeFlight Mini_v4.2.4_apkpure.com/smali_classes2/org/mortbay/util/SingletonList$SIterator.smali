.class Lorg/mortbay/util/SingletonList$SIterator;
.super Ljava/lang/Object;
.source "SingletonList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/SingletonList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIterator"
.end annotation


# instance fields
.field i:I

.field private final this$0:Lorg/mortbay/util/SingletonList;


# direct methods
.method constructor <init>(Lorg/mortbay/util/SingletonList;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lorg/mortbay/util/SingletonList$SIterator;->this$0:Lorg/mortbay/util/SingletonList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/util/SingletonList$SIterator;->i:I

    return-void
.end method

.method constructor <init>(Lorg/mortbay/util/SingletonList;I)V
    .locals 3
    .param p2, "i"    # I

    .prologue
    .line 85
    iput-object p1, p0, Lorg/mortbay/util/SingletonList$SIterator;->this$0:Lorg/mortbay/util/SingletonList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    iput p2, p0, Lorg/mortbay/util/SingletonList$SIterator;->i:I

    .line 89
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SingletonList.add()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/mortbay/util/SingletonList$SIterator;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 92
    iget v1, p0, Lorg/mortbay/util/SingletonList$SIterator;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/mortbay/util/SingletonList$SIterator;->i:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/mortbay/util/SingletonList$SIterator;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/util/SingletonList$SIterator;->i:I

    iget-object v0, p0, Lorg/mortbay/util/SingletonList$SIterator;->this$0:Lorg/mortbay/util/SingletonList;

    invoke-static {v0}, Lorg/mortbay/util/SingletonList;->access$000(Lorg/mortbay/util/SingletonList;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/mortbay/util/SingletonList$SIterator;->i:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lorg/mortbay/util/SingletonList$SIterator;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/mortbay/util/SingletonList$SIterator;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mortbay/util/SingletonList$SIterator;->i:I

    iget-object v0, p0, Lorg/mortbay/util/SingletonList$SIterator;->this$0:Lorg/mortbay/util/SingletonList;

    invoke-static {v0}, Lorg/mortbay/util/SingletonList;->access$000(Lorg/mortbay/util/SingletonList;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/mortbay/util/SingletonList$SIterator;->i:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SingletonList.remove()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SingletonList.add()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
