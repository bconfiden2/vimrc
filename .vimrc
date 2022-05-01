" 좌측 사이드바에 라인넘버 표시
set nu

" 탭을 스페이스로 변환
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
" 시프트 크기를 4로 지정
set shiftwidth=4

" 줄바꿈시 새로운 줄이 이전 줄의 들여쓰기를 따라감
set autoindent
set smartindent

" 항상 커서의 위치를 표시함
set ruler

" 아래줄에 상태 바를 항상 표시
set laststatus=2

" 경고음 대신 스크린을 반짝이게함
"set visualbell

" 현재 위치한 줄에 하이라이트
set cursorline
" 현재 위치한 열에 하이라이트
set cursorcolumn

" 검색과 매칭되는 모든 문자열 표시, :noh 로 해제
set hlsearch
" 검색시 기본적으로 대소문자 구별하지 않음
set ignorecase
" 부분적으로 매칭되는 문자열들도 찾아나감
set incsearch
" 찾는 문자열에 대문자가 포함될 경우, 대소문자를 자동으로 구별하여 검색
set smartcase

" 색감 테마 지정
colorscheme darcula 

" 파일을 열 때, 종료하기 전 커서의 위치로 이동
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" 구문 하이라이트
if has("syntax")
    syntax on
endif
