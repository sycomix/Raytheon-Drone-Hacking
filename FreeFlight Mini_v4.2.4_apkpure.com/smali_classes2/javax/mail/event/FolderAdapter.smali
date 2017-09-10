.class public abstract Ljavax/mail/event/FolderAdapter;
.super Ljava/lang/Object;
.source "FolderAdapter.java"

# interfaces
.implements Ljavax/mail/event/FolderListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public folderCreated(Ljavax/mail/event/FolderEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/mail/event/FolderEvent;

    .prologue
    .line 39
    return-void
.end method

.method public folderDeleted(Ljavax/mail/event/FolderEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/mail/event/FolderEvent;

    .prologue
    .line 41
    return-void
.end method

.method public folderRenamed(Ljavax/mail/event/FolderEvent;)V
    .locals 0
    .param p1, "e"    # Ljavax/mail/event/FolderEvent;

    .prologue
    .line 40
    return-void
.end method
