.class public Lcom/google/api/services/youtube/YouTube$Comments;
.super Ljava/lang/Object;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Comments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/youtube/YouTube$Comments$Update;,
        Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;,
        Lcom/google/api/services/youtube/YouTube$Comments$MarkAsSpam;,
        Lcom/google/api/services/youtube/YouTube$Comments$List;,
        Lcom/google/api/services/youtube/YouTube$Comments$Insert;,
        Lcom/google/api/services/youtube/YouTube$Comments$Delete;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/youtube/YouTube;


# direct methods
.method public constructor <init>(Lcom/google/api/services/youtube/YouTube;)V
    .locals 0

    .prologue
    .line 4137
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Comments;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4909
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4151
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Comments$Delete;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$Delete;-><init>(Lcom/google/api/services/youtube/YouTube$Comments;Ljava/lang/String;)V

    .line 4152
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Comments;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4153
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/youtube/model/Comment;)Lcom/google/api/services/youtube/YouTube$Comments$Insert;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4249
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Comments$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Comments$Insert;-><init>(Lcom/google/api/services/youtube/YouTube$Comments;Ljava/lang/String;Lcom/google/api/services/youtube/model/Comment;)V

    .line 4250
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Comments;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4251
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4355
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Comments$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$List;-><init>(Lcom/google/api/services/youtube/YouTube$Comments;Ljava/lang/String;)V

    .line 4356
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Comments;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4357
    return-object v0
.end method

.method public markAsSpam(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$MarkAsSpam;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4608
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Comments$MarkAsSpam;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$MarkAsSpam;-><init>(Lcom/google/api/services/youtube/YouTube$Comments;Ljava/lang/String;)V

    .line 4609
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Comments;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4610
    return-object v0
.end method

.method public setModerationStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4715
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;-><init>(Lcom/google/api/services/youtube/YouTube$Comments;Ljava/lang/String;Ljava/lang/String;)V

    .line 4716
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Comments;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4717
    return-object v0
.end method

.method public update(Ljava/lang/String;Lcom/google/api/services/youtube/model/Comment;)Lcom/google/api/services/youtube/YouTube$Comments$Update;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4904
    new-instance v0, Lcom/google/api/services/youtube/YouTube$Comments$Update;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Comments$Update;-><init>(Lcom/google/api/services/youtube/YouTube$Comments;Ljava/lang/String;Lcom/google/api/services/youtube/model/Comment;)V

    .line 4905
    iget-object v1, p0, Lcom/google/api/services/youtube/YouTube$Comments;->this$0:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v1, v0}, Lcom/google/api/services/youtube/YouTube;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4906
    return-object v0
.end method
