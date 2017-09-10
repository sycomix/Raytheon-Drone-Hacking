.class Lorg/mortbay/util/IO$Job;
.super Ljava/lang/Object;
.source "IO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Job"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;

.field read:Ljava/io/Reader;

.field write:Ljava/io/Writer;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/mortbay/util/IO$Job;->in:Ljava/io/InputStream;

    .line 78
    iput-object p2, p0, Lorg/mortbay/util/IO$Job;->out:Ljava/io/OutputStream;

    .line 79
    iput-object v0, p0, Lorg/mortbay/util/IO$Job;->read:Ljava/io/Reader;

    .line 80
    iput-object v0, p0, Lorg/mortbay/util/IO$Job;->write:Ljava/io/Writer;

    .line 81
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 1
    .param p1, "read"    # Ljava/io/Reader;
    .param p2, "write"    # Ljava/io/Writer;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v0, p0, Lorg/mortbay/util/IO$Job;->in:Ljava/io/InputStream;

    .line 85
    iput-object v0, p0, Lorg/mortbay/util/IO$Job;->out:Ljava/io/OutputStream;

    .line 86
    iput-object p1, p0, Lorg/mortbay/util/IO$Job;->read:Ljava/io/Reader;

    .line 87
    iput-object p2, p0, Lorg/mortbay/util/IO$Job;->write:Ljava/io/Writer;

    .line 88
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 97
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/util/IO$Job;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lorg/mortbay/util/IO$Job;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/mortbay/util/IO$Job;->out:Ljava/io/OutputStream;

    const-wide/16 v4, -0x1

    invoke-static {v2, v3, v4, v5}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v2, p0, Lorg/mortbay/util/IO$Job;->read:Ljava/io/Reader;

    iget-object v3, p0, Lorg/mortbay/util/IO$Job;->write:Ljava/io/Writer;

    const-wide/16 v4, -0x1

    invoke-static {v2, v3, v4, v5}, Lorg/mortbay/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 106
    :try_start_1
    iget-object v2, p0, Lorg/mortbay/util/IO$Job;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_2

    .line 107
    iget-object v2, p0, Lorg/mortbay/util/IO$Job;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 108
    :cond_2
    iget-object v2, p0, Lorg/mortbay/util/IO$Job;->write:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lorg/mortbay/util/IO$Job;->write:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e2":Ljava/io/IOException;
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
