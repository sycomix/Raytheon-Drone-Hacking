.class public Ljavax/mail/event/FolderEvent;
.super Ljavax/mail/event/MailEvent;
.source "FolderEvent.java"


# static fields
.field public static final CREATED:I = 0x1

.field public static final DELETED:I = 0x2

.field public static final RENAMED:I = 0x3

.field private static final serialVersionUID:J = 0x493fb076540416e3L


# instance fields
.field protected transient folder:Ljavax/mail/Folder;

.field protected transient newFolder:Ljavax/mail/Folder;

.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/mail/Folder;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .param p3, "type"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p2, p3}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "oldFolder"    # Ljavax/mail/Folder;
    .param p3, "newFolder"    # Ljavax/mail/Folder;
    .param p4, "type"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 104
    iput-object p2, p0, Ljavax/mail/event/FolderEvent;->folder:Ljavax/mail/Folder;

    .line 105
    iput-object p3, p0, Ljavax/mail/event/FolderEvent;->newFolder:Ljavax/mail/Folder;

    .line 106
    iput p4, p0, Ljavax/mail/event/FolderEvent;->type:I

    .line 107
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 147
    iget v0, p0, Ljavax/mail/event/FolderEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 148
    check-cast p1, Ljavax/mail/event/FolderListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-interface {p1, p0}, Ljavax/mail/event/FolderListener;->folderCreated(Ljavax/mail/event/FolderEvent;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local p1    # "listener":Ljava/lang/Object;
    :cond_1
    iget v0, p0, Ljavax/mail/event/FolderEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 150
    check-cast p1, Ljavax/mail/event/FolderListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-interface {p1, p0}, Ljavax/mail/event/FolderListener;->folderDeleted(Ljavax/mail/event/FolderEvent;)V

    goto :goto_0

    .line 151
    .restart local p1    # "listener":Ljava/lang/Object;
    :cond_2
    iget v0, p0, Ljavax/mail/event/FolderEvent;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 152
    check-cast p1, Ljavax/mail/event/FolderListener;

    .end local p1    # "listener":Ljava/lang/Object;
    invoke-interface {p1, p0}, Ljavax/mail/event/FolderListener;->folderRenamed(Ljavax/mail/event/FolderEvent;)V

    goto :goto_0
.end method

.method public getFolder()Ljavax/mail/Folder;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ljavax/mail/event/FolderEvent;->folder:Ljavax/mail/Folder;

    return-object v0
.end method

.method public getNewFolder()Ljavax/mail/Folder;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Ljavax/mail/event/FolderEvent;->newFolder:Ljavax/mail/Folder;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Ljavax/mail/event/FolderEvent;->type:I

    return v0
.end method
