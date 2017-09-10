.class public interface abstract Lcom/google/gdata/data/ILink;
.super Ljava/lang/Object;
.source "ILink.java"

# interfaces
.implements Lcom/google/gdata/data/Reference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/ILink$Type;,
        Lcom/google/gdata/data/ILink$Rel;
    }
.end annotation


# virtual methods
.method public abstract getRel()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract setRel(Ljava/lang/String;)V
.end method

.method public abstract setType(Ljava/lang/String;)V
.end method
