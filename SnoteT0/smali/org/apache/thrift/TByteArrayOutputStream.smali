.class public Lorg/apache/thrift/TByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "TByteArrayOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public get()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/thrift/TByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public len()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/apache/thrift/TByteArrayOutputStream;->count:I

    return v0
.end method
