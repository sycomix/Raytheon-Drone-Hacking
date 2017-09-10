.class public Lorg/mortbay/jetty/servlet/PathMap$Entry;
.super Ljava/lang/Object;
.source "PathMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/PathMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private key:Ljava/lang/Object;

.field private mapped:Ljava/lang/String;

.field private transient string:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;->key:Ljava/lang/Object;

    .line 527
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;->value:Ljava/lang/Object;

    .line 528
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getMapped()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;->mapped:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method setMapped(Ljava/lang/String;)V
    .locals 0
    .param p1, "mapped"    # Ljava/lang/String;

    .prologue
    .line 559
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;->mapped:Ljava/lang/String;

    .line 560
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 542
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;->string:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;->string:Ljava/lang/String;

    .line 549
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/PathMap$Entry;->string:Ljava/lang/String;

    return-object v0
.end method
