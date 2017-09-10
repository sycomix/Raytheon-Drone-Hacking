.class public Lorg/mortbay/component/Container$Relationship;
.super Ljava/lang/Object;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/component/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Relationship"
.end annotation


# instance fields
.field private _child:Ljava/lang/Object;

.field private _container:Lorg/mortbay/component/Container;

.field private _parent:Ljava/lang/Object;

.field private _relationship:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "container"    # Lorg/mortbay/component/Container;
    .param p2, "parent"    # Ljava/lang/Object;
    .param p3, "child"    # Ljava/lang/Object;
    .param p4, "relationship"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lorg/mortbay/component/Container$Relationship;->_container:Lorg/mortbay/component/Container;

    .line 243
    iput-object p2, p0, Lorg/mortbay/component/Container$Relationship;->_parent:Ljava/lang/Object;

    .line 244
    iput-object p3, p0, Lorg/mortbay/component/Container$Relationship;->_child:Ljava/lang/Object;

    .line 245
    iput-object p4, p0, Lorg/mortbay/component/Container$Relationship;->_relationship:Ljava/lang/String;

    .line 246
    return-void
.end method

.method constructor <init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/mortbay/component/Container$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mortbay/component/Container;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lorg/mortbay/component/Container$1;

    .prologue
    .line 233
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mortbay/component/Container$Relationship;-><init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 280
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/mortbay/component/Container$Relationship;

    if-nez v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 282
    check-cast v0, Lorg/mortbay/component/Container$Relationship;

    .line 283
    .local v0, "r":Lorg/mortbay/component/Container$Relationship;
    iget-object v2, v0, Lorg/mortbay/component/Container$Relationship;->_parent:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mortbay/component/Container$Relationship;->_parent:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lorg/mortbay/component/Container$Relationship;->_child:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mortbay/component/Container$Relationship;->_child:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lorg/mortbay/component/Container$Relationship;->_relationship:Ljava/lang/String;

    iget-object v3, p0, Lorg/mortbay/component/Container$Relationship;->_relationship:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getChild()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/mortbay/component/Container$Relationship;->_child:Ljava/lang/Object;

    return-object v0
.end method

.method public getContainer()Lorg/mortbay/component/Container;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/mortbay/component/Container$Relationship;->_container:Lorg/mortbay/component/Container;

    return-object v0
.end method

.method public getParent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/mortbay/component/Container$Relationship;->_parent:Ljava/lang/Object;

    return-object v0
.end method

.method public getRelationship()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/mortbay/component/Container$Relationship;->_relationship:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lorg/mortbay/component/Container$Relationship;->_parent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->_child:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->_relationship:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->_parent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->_relationship:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->_child:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
