.class public interface abstract Lcom/google/gdata/data/IEntry;
.super Ljava/lang/Object;
.source "IEntry.java"

# interfaces
.implements Lcom/google/gdata/data/IAtom;


# virtual methods
.method public abstract getCanEdit()Z
.end method

.method public abstract getContent()Lcom/google/gdata/data/IContent;
.end method

.method public abstract getEditLink()Lcom/google/gdata/data/ILink;
.end method

.method public abstract getEdited()Lcom/google/gdata/data/DateTime;
.end method

.method public abstract getMediaEditLink()Lcom/google/gdata/data/ILink;
.end method

.method public abstract getPublished()Lcom/google/gdata/data/DateTime;
.end method

.method public abstract getResumableEditMediaLink()Lcom/google/gdata/data/ILink;
.end method

.method public abstract getSelectedFields()Ljava/lang/String;
.end method

.method public abstract getSummary()Lcom/google/gdata/data/ITextConstruct;
.end method

.method public abstract setCanEdit(Z)V
.end method

.method public abstract setEdited(Lcom/google/gdata/data/DateTime;)V
.end method

.method public abstract setPublished(Lcom/google/gdata/data/DateTime;)V
.end method

.method public abstract setSelectedFields(Ljava/lang/String;)V
.end method
