.class public Lcom/google/gdata/model/atom/Entry$EntryState;
.super Ljava/lang/Object;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/atom/Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntryState"
.end annotation


# instance fields
.field public canEdit:Z

.field public service:Lcom/google/gdata/client/Service;

.field public versionId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/model/atom/Entry$EntryState;->canEdit:Z

    return-void
.end method
